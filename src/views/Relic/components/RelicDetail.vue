<template>
  <div class="parent">
    <beautiful-chat :alwaysScrollToBottom="alwaysScrollToBottom" :close="closeChat" :colors="colors"
                    :disableUserListToggle="false" :isOpen="isChatOpen" :messageList="messageList" :messageStyling="messageStyling"
                    :newMessagesCount="newMessagesCount" :onMessageWasSent="onMessageWasSent" :open="openChat"
                    :participants="participants" :showCloseButton="true" :showDeletion="true" :showEdition="true" :showEmoji="true"
                    :showFile="true" :showLauncher="true" :showTypingIndicator="showTypingIndicator" :titleImageUrl="titleImageUrl"
                    @edit="editMessage" @onType="handleOnType" />


    <div class="container">
      <div class="relic-container">
        <div class="left">
          <p><span class="miaoshu">ID：</span>{{ relicDetailData.id }}</p>
          <p><span class="miaoshu">Title：</span>{{ relicDetailData.title }}</p>
          <p><span class="miaoshu">Dated：</span>{{ relicDetailData.dated }}</p>
          <p><span class="miaoshu">Artist：</span>{{ relicDetailData.artist }}</p>
          <p><span class="miaoshu">Role：</span>{{ relicDetailData.role }}</p>
          <p><span class="miaoshu">Department：</span>{{ relicDetailData.department }}</p>
          <p><span class="miaoshu">Country：</span>{{ relicDetailData.country }}</p>
          <p><span class="miaoshu">Description：</span>{{ relicDetailData.description }}</p>

        </div>
        <div class="center">
          <img :src="relicDetailData.imgUrl" alt="">
        </div>
        <div class="right">
          <p><span class="miaoshu">Comments: </span>{{ relicDetailData.comments }}</p>
          <p><span class="miaoshu">Web_url：</span>
            <a :href="relicDetailData.webUrl">{{ relicDetailData.webUrl }}</a>
          </p>
        </div>
        <div>
        </div>

      </div>
    </div>

  </div>
</template>

<script>
import Chat from 'vue-beautiful-chat'
import Vue from "vue";
import axios from "axios";
Vue.use(Chat)

export default {
  name: "RelicDetail",
  data() {
    return {
      suggestions: [
          "这个文物的作者是谁?",
          "这个文物的材质是什么?"
      ],
      relicDetailData: [],
      temp: [],

      participants: [
        {
          id: '1',
          name: 'Mercury',
          imageUrl: 'https://avatars3.githubusercontent.com/u/1915989?s=230&v=4'
        }
      ],
      // the list of all the participant of the conversation. `name` is the user name, `id` is used to establish the author of a message, `imageUrl` is supposed to be the user avatar.
      titleImageUrl: 'https://a.slack-edge.com/66f9/img/avatars-teams/ava_0001-34.png',
      messageList: [
        // { type: 'text', author: `me`, data: { text: `Say yes!` } },
        { type: 'text', author: `user1`, data: { text: `你好！我是mercury，我是一名研究中国文物的专家。很高兴认识你！` } }
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
      messageStyling: true, // enables *bold* /emph/ _underline_ and such (more info at github.com/mattezza/msgdown)
      userIsTyping: false,
    }
  },
  methods: {

    sendMessage(text) {
      if (text.length > 0) {
        this.newMessagesCount = this.isChatOpen ? this.newMessagesCount : this.newMessagesCount + 1
        this.onMessageWasSent({ author: 'support', type: 'text', data: { text } })
      }
    },
    onMessageWasSent(message) {
      // called when the user sends a message
      if (message.author === 'support') {

      } else {
        this.messageList = [...this.messageList, message]
        this.showTypingIndicator = this.participants[this.participants.length - 1].id
        this.$axios({
          method: 'post',
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
          },
          url: 'http://123.57.82.78:9000/api/conversation/',
          data: {
            'message': message.data.text,
            'userId': this.participants[0].id
          }
        })
            .then(res => {
              console.log(res)
              if (res.data.result === 'success') {
                  const response = { author: 'support', type: 'text', data: {'text': res.data.data} }
                  this.showTypingIndicator = ''
                  this.messageList = [...this.messageList, response]
              }
            })
            .catch(err => {
              console.log(err);
            })
      }
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
        this.$root.$emit('onType')
        this.userIsTyping = true
      },
    editMessage(message) {
      const m = this.messageList.find(m => m.id === message.id);
      m.isEdited = true;
      m.data.text = message.data.text;
    },

    // 获取数据
    fetchRelicDetailData() {
      console.log('假设现在是调取接口数据，参数是id:' + this.$route.params.id)
      // const data = api()
      //此处获取到接口的真实数据后替换data中的relicDetailData
      const index =  this.temp.findIndex((role) => role.id === this.$route.params.id)
      console.log(index)
      // const data = temp[index]
      // this.relicDetailData = data


      this.relicDetailData = this.temp[
          this.temp.findIndex((role) => role.id === this.$route.params.id)
          ];
    }
  },
  mounted() {
    axios.get('http://101.43.245.160:8081//artifact/all').then(response=>{
      console.log(response.data)
      this.temp = response.data.data
      this.fetchRelicDetailData()
    }).catch(error=>{
      console.log(error)
    })
    // this.showList = JSON.parse(JSON.stringify(this.relic))
  }
}
</script>

<style scoped >
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
}

.miaoshu {
  color: red;
}

h1 {
  font-size: 2.5rem;
  text-align: center;
  margin-top: 1.5rem;
  margin-bottom: 1.5rem;
}

.pageTitle {
  color: tomato;
}

p {
  font-size: 1.2rem;
  line-height: 1.5;
  text-align: justify;
  margin-top: 1.5rem;
  margin-bottom: 1.5rem;
}



img {
  width: 60%;
  height: auto;
  display: block;
  margin: 0 auto;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
}

.relic-container {
  display: flex;
  flex-wrap: wrap;
  align-items: stretch;
  padding: 20px;
  max-width: 80%;
  box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
}

.left {
  flex: 1 1 200px;
}

.center {
  flex: 2 2 400px;
}

.right {
  flex: 1 1 200px;
}

.relic-container h1 {
  margin-bottom: 20px;
}

.relic-container img {
  max-width: 100%;
  height: auto;
  margin-bottom: 20px;
}

.relic-container p {
  text-align: justify;
}
</style>