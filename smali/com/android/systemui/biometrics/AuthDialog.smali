.class public interface abstract Lcom/android/systemui/biometrics/AuthDialog;
.super Ljava/lang/Object;
.source "AuthDialog.java"


# virtual methods
.method public abstract animateToCredentialUI()V
.end method

.method public abstract dismissFromSystemServer()V
.end method

.method public abstract dismissWithoutCallback(Z)V
.end method

.method public abstract getOpPackageName()Ljava/lang/String;
.end method

.method public abstract isAllowDeviceCredentials()Z
.end method

.method public abstract onAuthenticationFailed(Ljava/lang/String;)V
.end method

.method public abstract onAuthenticationSucceeded()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onHelp(Ljava/lang/String;)V
.end method

.method public abstract onSaveState(Landroid/os/Bundle;)V
.end method

.method public abstract show(Landroid/view/WindowManager;Landroid/os/Bundle;)V
.end method
