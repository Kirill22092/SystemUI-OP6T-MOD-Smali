.class Lcom/android/systemui/screenshot/TakeScreenshotService$2;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Landroid/os/Messenger;Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$handleMessage$1(Landroid/os/Messenger;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic lambda$handleMessage$2(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$lw7umVWkOvN_7ORxe6g8U2JVo4M;

    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$lw7umVWkOvN_7ORxe6g8U2JVo4M;-><init>(Landroid/os/Messenger;)V

    new-instance v2, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$gR0841riU57UiM3DXnP9uiMvS7k;

    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$gR0841riU57UiM3DXnP9uiMvS7k;-><init>(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100(Lcom/android/systemui/screenshot/TakeScreenshotService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TakeScreenshotService"

    const-string v0, "Skipping screenshot because storage is locked!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$amml4XPd92h7sVnqzN-RFeKOz-s;

    invoke-direct {p1, v1}, Lcom/android/systemui/screenshot/-$$Lambda$TakeScreenshotService$2$amml4XPd92h7sVnqzN-RFeKOz-s;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$2;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200(Lcom/android/systemui/screenshot/TakeScreenshotService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getSource()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
