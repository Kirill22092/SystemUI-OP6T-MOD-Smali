.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leaveOneHand()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher request leave one hand mode. isOneHandedSettingEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsOneHandedPerformed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$900(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$900(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->requestExitOneHandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$902(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1000(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    :cond_0
    return-void
.end method
