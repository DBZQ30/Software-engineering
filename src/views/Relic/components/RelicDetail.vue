<template>
<div>

  <beautiful-chat
      :alwaysScrollToBottom="alwaysScrollToBottom"
      :close="closeChat"
      :colors="colors"
      :disableUserListToggle="false"
      :isOpen="isChatOpen"
      :messageList="messageList"
      :messageStyling="messageStyling"
      :newMessagesCount="newMessagesCount"
      :onMessageWasSent="onMessageWasSent"
      :open="openChat"
      :participants="participants"
      :showCloseButton="true"
      :showDeletion="true"
      :showEdition="true"
      :showEmoji="true"
      :showFile="true"
      :showLauncher="true"
      :showTypingIndicator="showTypingIndicator"
      :titleImageUrl="titleImageUrl"
      @edit="editMessage"
      @onType="handleOnType"/>

  <h1>当前文物id为:{{ $route.params.id }}</h1>
<!--  {{ relicDetailData }}-->
  <div
      v-for="(item, index) in relicDetailData"
      :key="index"
  >
    <div>
      <img :src="item.img_url" alt="">
    </div>
    <div>{{item.description}}</div>
  </div>
</div>
</template>

<script>
import Chat from 'vue-beautiful-chat'
import Vue from "vue";
Vue.use(Chat)

export default {
  name: "RelicDetail",
  data() {
    return {
      relicDetailData:[
        {
          "id": "157",
          "title": "Vase with the Eight Daoist Immortals",
          "dated": "c. 1300",
          "artist": "",
          "role": "Artist",
          "department": "Asian Art",
          "medium": "Longquan ware Porcelain with celadon glaze over impressed designs",
          "country": "Enginsh",
          "description": "Longquan ware; celadon glaze with 8 unglazed cartouches carved with immortals; floral cartouches above and below each immortal; low foot, narrow mouth",
          "comments": "This ovoid vase has an octagonal cross section and each of the eight sides comprising the vessel is decorated with molded recessed panels depicting one of the Eight Daoist Immortals amidst two floral sprays. The images of the immortals are shown standing on drifting clouds and each carry their identifying attributes.\r\nA wax resist technique was employed in the decoration of this piece. The central panels were painted with wax before glazing to prevent the celadon glaze from adhering to those areas. Upon firing, the unglazed portions of the clay body burned a bright rust color due to iron compounds in the clay.",
          "web_url": "https://collections.artsmia.org/art/157",
          "img_url": "https://6.api.artsmia.org/157.jpg",
          "submit_time": "2023-04-11 13:11:01"
        },
      ],
      participants: [
        {
          id: 'user1',
          name: 'Matteo',
          imageUrl: 'https://avatars3.githubusercontent.com/u/1915989?s=230&v=4'
        },
        {
          id: 'user2',
          name: 'Support',
          imageUrl: 'https://avatars3.githubusercontent.com/u/37018832?s=200&v=4'
        }
      ], // the list of all the participant of the conversation. `name` is the user name, `id` is used to establish the author of a message, `imageUrl` is supposed to be the user avatar.
      titleImageUrl: 'https://a.slack-edge.com/66f9/img/avatars-teams/ava_0001-34.png',
      messageList: [
        {type: 'text', author: `me`, data: {text: `Say yes!`}},
        {type: 'text', author: `user1`, data: {text: `No.`}}
      ], // the list of the messages to show, can be paginated and adjusted dynamically
      newMessagesCount: 0,
      isChatOpen: false, // to determine whether the chat window should be open or closed
      showTypingIndicator: '', // when set to a value matching the participant.id it shows the typing indicator for the specific user
      colors: {
        header: {
          bg: '#4e8cff',
          text: '#ffffff'
        },
        launcher: {
          bg: '#4e8cff'
        },
        messageList: {
          bg: '#ffffff'
        },
        sentMessage: {
          bg: '#4e8cff',
          text: '#ffffff'
        },
        receivedMessage: {
          bg: '#eaeaea',
          text: '#222222'
        },
        userInput: {
          bg: '#f4f7f9',
          text: '#565867'
        }
      }, // specifies the color scheme for the component
      alwaysScrollToBottom: false, // when set to true always scrolls the chat to the bottom when new events are in (new message, user starts typing...)
      messageStyling: true // enables *bold* /emph/ _underline_ and such (more info at github.com/mattezza/msgdown)

    }
  },
  methods: {

    sendMessage(text) {
      if (text.length > 0) {
        this.newMessagesCount = this.isChatOpen ? this.newMessagesCount : this.newMessagesCount + 1
        this.onMessageWasSent({author: 'support', type: 'text', data: {text}})
      }
    },
    onMessageWasSent(message) {
      // called when the user sends a message
      this.messageList = [...this.messageList, message]
    },
    openChat() {
      // called when the user clicks on the fab button to open the chat
      this.isChatOpen = true
      this.newMessagesCount = 0
    },
    closeChat() {
      // called when the user clicks on the botton to close the chat
      this.isChatOpen = false
    },
    handleScrollToTop() {
      // called when the user scrolls message list to top
      // leverage pagination for loading another page of messages
    },
    handleOnType() {
      console.log('Emit typing event')
    },
    editMessage(message) {
      const m = this.messageList.find(m => m.id === message.id);
      m.isEdited = true;
      m.data.text = message.data.text;
    },

    // 获取数据
    fetchRelicDetailData() {
      console.log('假设现在是调取接口数据，参数是id:'+this.$route.params.id)
      const data = api()
      //此处获取到接口的真实数据后替换data中的relicDetailData
      this.relicDetailData = data
    }
  },
  mounted() {
    this.fetchRelicDetailData()
  }
}
</script>

<style scoped>

</style>