const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm5umt6/",
            name: "ssm5umt6",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm5umt6/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于SSM的幼儿园管理系统的 设计与实现"
        } 
    }
}
export default base
