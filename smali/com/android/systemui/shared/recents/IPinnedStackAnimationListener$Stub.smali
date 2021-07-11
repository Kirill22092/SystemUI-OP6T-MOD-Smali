.class public abstract Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub;
.super Landroid/os/Binder;
.source "IPinnedStackAnimationListener.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.shared.recents.IPinnedStackAnimationListener"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;
    .locals 1

    .line 125
    sget-object v0, Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;

    return-object v0
.end method
