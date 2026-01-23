
#' 查询accountDetail
#'
#' @param token

#' @param erp_token
#'
#' @param FStatrDate
#' @param FEndDate
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' accountDetail_select()
accountDetail_select<- function(erp_token,FStatrDate,FEndDate) {

  sql=paste0("
exec rds_proc_accountDetail_view '",FStatrDate,"','",FEndDate,"' ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}

