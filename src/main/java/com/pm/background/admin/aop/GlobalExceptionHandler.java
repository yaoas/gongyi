package com.pm.background.admin.aop;
import com.pm.background.common.aop.BaseControllerExceptionHandler;
import com.pm.background.common.enumeration.RetEnum;
import com.pm.background.common.utils.R;
import org.apache.shiro.authz.UnauthorizedException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * 全局的的异常拦截器（拦截所有的控制器）（带有@RequestMapping注解的方法上都会拦截）
 *
 * @author hs
 * @date 2018年9月19日 下午19:19:56
 */
@ControllerAdvice
public class GlobalExceptionHandler extends BaseControllerExceptionHandler {

    private Logger log = LoggerFactory.getLogger(this.getClass());



    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public com.pm.background.common.utils.R exception(IllegalArgumentException e) {
        e.printStackTrace();
        return R.fail(e.getMessage());
    }


    @ExceptionHandler(IllegalStateException.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public R exception(IllegalStateException e) {
        e.printStackTrace();
        return R.fail(e.getMessage());
    }

    @ExceptionHandler(BindException.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public R exception(BindException e) {
        e.printStackTrace();
        return R.fail(e.getAllErrors().get(0).getDefaultMessage());
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public R exception(MethodArgumentNotValidException e) {
        e.printStackTrace();
        return R.fail(e.getBindingResult().getFieldErrors().get(0).getDefaultMessage());
    }

    @ExceptionHandler(UnauthorizedException.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public R exception(UnauthorizedException e) {
        e.printStackTrace();
        return R.fail(RetEnum.FORBID.getRet(),e.getMessage());
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public R exception(Exception e) {
        e.printStackTrace();
        return R.fail(RetEnum.SERVER_EXCEPTION.getRet(),e.getMessage());
    }




}
