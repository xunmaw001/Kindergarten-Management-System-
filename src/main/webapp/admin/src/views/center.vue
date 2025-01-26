<template>
  <div :style='{"padding":"30px 30px 30px 240px","backgroundAttachment":"fixed","background":"url(http://codegen.caihongy.cn/20220805/c242e6fd2047434bb1e519427e59e925.png)","backgroundSize":"cover","backgroundPosition":"center center","backgroundRepeat":"no-repeat","height":"calc(100vh - 120px)"}'>
    <el-form
	  :style='{"padding":"30px","boxShadow":"0 0px 0px rgba(64, 158, 255, .3)","borderRadius":"0","flexWrap":"wrap","background":"#fff","display":"flex"}'
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      label-width="100px"
    >  
     <el-row>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiazhang'"  label="家长账号" prop="jiazhangzhanghao">
          <el-input v-model="ruleForm.jiazhangzhanghao" readonly              placeholder="家长账号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiazhang'"  label="家长姓名" prop="jiazhangxingming">
          <el-input v-model="ruleForm.jiazhangxingming"               placeholder="家长姓名" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="flag=='jiazhang'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="jiazhangtouxiangUploadChange"
          ></file-upload>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="flag=='jiazhang'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie"  placeholder="请选择性别">
            <el-option
                v-for="(item,index) in jiazhangxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiazhang'"  label="孩子姓名" prop="haizixingming">
          <el-input v-model="ruleForm.haizixingming"               placeholder="孩子姓名" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiazhang'"  label="联系方式" prop="lianxifangshi">
          <el-input v-model="ruleForm.lianxifangshi"               placeholder="联系方式" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="flag=='jiazhang'" label="班级名称" prop="banjimingcheng">
          <el-select  @change="jiazhangbanjimingchengChange"  v-model="ruleForm.banjimingcheng" placeholder="请选择班级名称">
            <el-option
                v-for="(item,index) in jiazhangbanjimingchengOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiazhang'"  label="教师工号" prop="jiaoshigonghao">
          <el-input v-model="ruleForm.jiaoshigonghao"               placeholder="教师工号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiaoshi'"  label="教师工号" prop="jiaoshigonghao">
          <el-input v-model="ruleForm.jiaoshigonghao" readonly              placeholder="教师工号" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiaoshi'"  label="教师姓名" prop="jiaoshixingming">
          <el-input v-model="ruleForm.jiaoshixingming"               placeholder="教师姓名" clearable></el-input>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="flag=='jiaoshi'" label="头像" prop="touxiang">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.touxiang?ruleForm.touxiang:''"
          @change="jiaoshitouxiangUploadChange"
          ></file-upload>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="flag=='jiaoshi'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie"  placeholder="请选择性别">
            <el-option
                v-for="(item,index) in jiaoshixingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="flag=='jiaoshi'"  label="班级名称" prop="banjimingcheng">
          <el-select v-model="ruleForm.banjimingcheng" :disabled="true" placeholder="请选择班级名称">
            <el-option
                v-for="(item,index) in jiaoshibanjimingchengOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}'   v-if="flag=='jiaoshi'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
		<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="flag=='users'" label="用户名" prop="username">
			<el-input v-model="ruleForm.username" placeholder="用户名"></el-input>
		</el-form-item>
		<el-form-item :style='{"width":"100%","padding":"0","margin":"0"}'>
			<el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20220727/227fc20604bd464fb6d2f6d9aacc9c12.png) center center","width":"157px","lineHeight":"40px","fontSize":"14px","height":"43px"}' type="primary" @click="onUpdateHandler">修 改</el-button>
		</el-form-item>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
      jiazhangxingbieOptions: [],
      jiazhangbanjimingchengOptions: [],
      jiaoshixingbieOptions: [],
      jiaoshibanjimingchengOptions: [],
    };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.jiazhangxingbieOptions = "男,女".split(',')
    this.$http({
      url: `option/banjixinxi/banjimingcheng`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.jiazhangbanjimingchengOptions = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
    this.jiaoshixingbieOptions = "男,女".split(',')
    this.$http({
      url: `option/banjixinxi/banjimingcheng`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.jiaoshibanjimingchengOptions = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
  },
  methods: {
    // 下二随
    jiazhangbanjimingchengChange () {
      this.$http({
        url: `follow/banjixinxi/banjimingcheng?columnValue=`+ this.ruleForm.banjimingcheng,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          console.log('下2随')
              if(data.data.jiaoshigonghao){
                this.ruleForm.jiaoshigonghao = data.data.jiaoshigonghao
              }
        } else {
          this.$message.error(data.msg);
        }
      });
    },
    jiazhangtouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
    jiaoshitouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
    onUpdateHandler() {
      if((!this.ruleForm.mima)&& 'jiazhang'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
        if(this.ruleForm.touxiang!=null) {
                this.ruleForm.touxiang = this.ruleForm.touxiang.replace(new RegExp(this.$base.url,"g"),"");
        }
      if( 'jiazhang' ==this.flag && this.ruleForm.lianxifangshi&&(!isMobile(this.ruleForm.lianxifangshi))){
        this.$message.error(`联系方式应输入手机格式`);
        return
      }
      if((!this.ruleForm.jiaoshigonghao)&& 'jiaoshi'==this.flag){
        this.$message.error('教师工号不能为空');
        return
      }
      if((!this.ruleForm.mima)&& 'jiaoshi'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
        if(this.ruleForm.touxiang!=null) {
                this.ruleForm.touxiang = this.ruleForm.touxiang.replace(new RegExp(this.$base.url,"g"),"");
        }
      if( 'jiaoshi' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
      if('users'==this.flag && this.ruleForm.username.trim().length<1) {
	this.$message.error(`用户名不能为空`);
        return	
      }
      this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 10px 0 0;
	  	  color: #000;
	  	  font-weight: 500;
	  	  width: 100px;
	  	  font-size: 14px;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 100px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 0 12px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 0 10px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 0 10px 0 30px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
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
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  border: 2px dashed;
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #9EA1F4;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 32px;
	  	  line-height: 200px;
	  	  text-align: center;
	  	  height: 200px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  border: 2px dashed;
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #9EA1F4;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 32px;
	  	  line-height: 200px;
	  	  text-align: center;
	  	  height: 200px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 12px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 120px;
	  	}
</style>
