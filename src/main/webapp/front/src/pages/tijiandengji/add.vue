<template>
<div :style='{"border":"2px solid #dbd9f4","padding":"20px","margin":"10px auto","borderRadius":"8px","background":"#fff","width":"1200px","position":"relative"}'>
    <el-form
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="体检名称" prop="tijianmingcheng">
            <el-input v-model="ruleForm.tijianmingcheng" 
                placeholder="体检名称" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="家长账号" prop="jiazhangzhanghao">
            <el-input v-model="ruleForm.jiazhangzhanghao" 
                placeholder="家长账号" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="体检图片" v-if="type!='cross' || (type=='cross' && !ro.tijiantupian)" prop="tijiantupian">
            <file-upload
            tip="点击上传体检图片"
            action="file/upload"
            :limit="3"
            :multiple="true"
            :fileUrls="ruleForm.tijiantupian?ruleForm.tijiantupian:''"
            @change="tijiantupianUploadChange"
            ></file-upload>
          </el-form-item>
            <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' class="upload" v-else label="体检图片" prop="tijiantupian">
                <img v-if="ruleForm.tijiantupian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.tijiantupian.split(',')[0]" width="100" height="100">
                <img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.tijiantupian.split(',')" :src="baseUrl+item" width="100" height="100">
            </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="孩子姓名" prop="haizixingming">
            <el-input v-model="ruleForm.haizixingming" 
                placeholder="孩子姓名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="身高" prop="shengao">
            <el-input v-model="ruleForm.shengao" 
                placeholder="身高" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="体重" prop="tizhong">
            <el-input v-model="ruleForm.tizhong" 
                placeholder="体重" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="视力" prop="shili">
            <el-input v-model="ruleForm.shili" 
                placeholder="视力" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="心率" prop="xinlv">
            <el-input v-model="ruleForm.xinlv" 
                placeholder="心率" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="教师工号" prop="jiaoshigonghao">
            <el-input v-model="ruleForm.jiaoshigonghao" 
                placeholder="教师工号" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="体检时间" prop="tijianshijian" >
              <el-date-picker
                  value-format="yyyy-MM-dd HH:mm:ss"
                  v-model="ruleForm.tijianshijian" 
                  type="datetime"
                  placeholder="体检时间">
              </el-date-picker>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="体检详情" prop="tijianxiangqing">
            <editor 
                :style='{"border":"1px solid #cbbae8","width":"100%","borderRadius":"4px","height":"auto"}'
                v-model="ruleForm.tijianxiangqing" 
                class="editor" 
                action="file/upload">
            </editor>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="体检评价" prop="tijianpingjia">
            <editor 
                :style='{"border":"1px solid #cbbae8","width":"100%","borderRadius":"4px","height":"auto"}'
                v-model="ruleForm.tijianpingjia" 
                class="editor" 
                action="file/upload">
            </editor>
          </el-form-item>

      <el-form-item :style='{"padding":"0","margin":"0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 25%","outline":"none","color":"#666","borderRadius":"10px","background":"linear-gradient(90deg, rgba(255,233,100,1) 0%, rgba(194,248,126,1) 29%, rgba(181,233,252,1) 61%, rgba(246,172,218,1) 100%)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"border":"2px solid rgba(213, 203, 235, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#000","borderRadius":"4px","background":"rgba(255, 255, 255, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
      return {
        id: '',
        baseUrl: '',
        ro:{
            tijianmingcheng : false,
            jiazhangzhanghao : false,
            tijiantupian : false,
            haizixingming : false,
            shengao : false,
            tizhong : false,
            shili : false,
            xinlv : false,
            tijianxiangqing : false,
            tijianpingjia : false,
            jiaoshigonghao : false,
            tijianshijian : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          tijianmingcheng: '',
          jiazhangzhanghao: '',
          tijiantupian: '',
          haizixingming: '',
          shengao: '',
          tizhong: '',
          shili: '',
          xinlv: '',
          tijianxiangqing: '',
          tijianpingjia: '',
          jiaoshigonghao: '',
          tijianshijian: '',
        },
        rules: {
          tijianmingcheng: [
          ],
          jiazhangzhanghao: [
          ],
          tijiantupian: [
          ],
          haizixingming: [
          ],
          shengao: [
          ],
          tizhong: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          shili: [
          ],
          xinlv: [
          ],
          tijianxiangqing: [
          ],
          tijianpingjia: [
          ],
          jiaoshigonghao: [
          ],
          tijianshijian: [
          ],
        },
      };
    },
    computed: {



    },
    created() {
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.baseUrl = this.$config.baseUrl;
      this.ruleForm.tijianshijian = this.getCurDateTime()
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='tijianmingcheng'){
              this.ruleForm.tijianmingcheng = obj[o];
              this.ro.tijianmingcheng = true;
              continue;
            }
            if(o=='jiazhangzhanghao'){
              this.ruleForm.jiazhangzhanghao = obj[o];
              this.ro.jiazhangzhanghao = true;
              continue;
            }
            if(o=='tijiantupian'){
              this.ruleForm.tijiantupian = obj[o].split(",")[0];
              this.ro.tijiantupian = true;
              continue;
            }
            if(o=='haizixingming'){
              this.ruleForm.haizixingming = obj[o];
              this.ro.haizixingming = true;
              continue;
            }
            if(o=='shengao'){
              this.ruleForm.shengao = obj[o];
              this.ro.shengao = true;
              continue;
            }
            if(o=='tizhong'){
              this.ruleForm.tizhong = obj[o];
              this.ro.tizhong = true;
              continue;
            }
            if(o=='shili'){
              this.ruleForm.shili = obj[o];
              this.ro.shili = true;
              continue;
            }
            if(o=='xinlv'){
              this.ruleForm.xinlv = obj[o];
              this.ro.xinlv = true;
              continue;
            }
            if(o=='tijianxiangqing'){
              this.ruleForm.tijianxiangqing = obj[o];
              this.ro.tijianxiangqing = true;
              continue;
            }
            if(o=='tijianpingjia'){
              this.ruleForm.tijianpingjia = obj[o];
              this.ro.tijianpingjia = true;
              continue;
            }
            if(o=='jiaoshigonghao'){
              this.ruleForm.jiaoshigonghao = obj[o];
              this.ro.jiaoshigonghao = true;
              continue;
            }
            if(o=='tijianshijian'){
              this.ruleForm.tijianshijian = obj[o];
              this.ro.tijianshijian = true;
              continue;
            }
          }
        }
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
          }
        });
      },

    // 多级联动参数
      // 多级联动参数
      info(id) {
        this.$http.get('tijiandengji/detail/${id}', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {

        //更新跨表属性
        var crossuserid;
        var crossrefid;
        var crossoptnum;
        this.$refs["ruleForm"].validate(valid => {
          if(valid) {
            if(this.type=='cross'){
                 var statusColumnName = localStorage.getItem('statusColumnName');
                 var statusColumnValue = localStorage.getItem('statusColumnValue');
                 if(statusColumnName && statusColumnName!='') {
                     var obj = JSON.parse(localStorage.getItem('crossObj'));
                     if(!statusColumnName.startsWith("[")) {
                         for (var o in obj){
                             if(o==statusColumnName){
                                 obj[o] = statusColumnValue;
                             }
                         }
                         var table = localStorage.getItem('crossTable');
                         this.$http.post(table+'/update', obj).then(res => {});
                     } else {
                            crossuserid=Number(localStorage.getItem('userid'));
                            crossrefid=obj['id'];
                            crossoptnum=localStorage.getItem('statusColumnName');
                            crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                     }
                 }
            }
            if(crossrefid && crossuserid) {
                 this.ruleForm.crossuserid=crossuserid;
                 this.ruleForm.crossrefid=crossrefid;
                 var params = {
                     page: 1,
                     limit: 10,
                     crossuserid:crossuserid,
                     crossrefid:crossrefid,
                 }
                 this.$http.get('tijiandengji/list', {
                  params: params
                 }).then(res => {
                     if(res.data.data.total>=crossoptnum) {
                         this.$message({
                          message: localStorage.getItem('tips'),
                          type: 'success',
                          duration: 1500,
                         });
                          return false;
                     } else {
                         // 跨表计算


                          this.$http.post('tijiandengji/add', this.ruleForm).then(res => {
                              if (res.data.code == 0) {
                                  this.$message({
                                      message: '操作成功',
                                      type: 'success',
                                      duration: 1500,
                                      onClose: () => {
                                          this.$router.go(-1);
                                      }
                                  });
                              } else {
                                  this.$message({
                                      message: res.data.msg,
                                      type: 'error',
                                      duration: 1500
                                  });
                              }
                          });
                     }
                 });
             } else {


                  this.$http.post('tijiandengji/add', this.ruleForm).then(res => {
                     if (res.data.code == 0) {
                          this.$message({
                              message: '操作成功',
                              type: 'success',
                              duration: 1500,
                              onClose: () => {
                                  this.$router.go(-1);
                              }
                          });
                      } else {
                          this.$message({
                              message: res.data.msg,
                              type: 'error',
                              duration: 1500
                          });
                      }
                  });
             }
          }
        });
      },
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
      // 返回
      back() {
        this.$router.go(-1);
      },
      tijiantupianUploadChange(fileUrls) {
          this.ruleForm.tijiantupian = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");;
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #666;
	  font-weight: 500;
	  width: 80px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 80px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 0 12px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 400px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 0 10px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 0 10px 0 30px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  border: 1px dashed rgba(204, 188, 233, 1);
	  cursor: pointer;
	  border-radius: 6px;
	  color: #cbbae8;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  border: 1px dashed rgba(204, 188, 233, 1);
	  cursor: pointer;
	  border-radius: 6px;
	  color: #cbbae8;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  border: 1px dashed rgba(204, 188, 233, 1);
	  cursor: pointer;
	  border-radius: 6px;
	  color: #cbbae8;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 12px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 400px;
	  font-size: 14px;
	  height: 120px;
	}
</style>
