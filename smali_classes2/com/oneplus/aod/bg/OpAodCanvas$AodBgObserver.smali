.class Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;
.super Landroid/database/ContentObserver;
.source "OpAodCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpAodCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AodBgObserver"
.end annotation


# instance fields
.field private mResigerSuccess:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/aod/bg/OpAodCanvas;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/bg/OpAodCanvas;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "content://net.oneplus.launcher.canvas.CanvasProvider/canvasAODEnabled"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private onChangeInner(Z)Z
    .locals 6

    const-string v0, "OpAodCanvas"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v2}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1700(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/shared/system/OpContextWrapper;->getCurrentUserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeInner: contentChange= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", userId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isSwitchingUser= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mUserSwitching= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v5}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1800(Lcom/oneplus/aod/bg/OpAodCanvas;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v3}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1800(Lcom/oneplus/aod/bg/OpAodCanvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mUri:Landroid/net/Uri;

    const-string v4, "canvasAODEnabled"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "call is null!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p0, v2, p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1900(Lcom/oneplus/aod/bg/OpAodCanvas;Landroid/os/Bundle;Z)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "during switching user progress, return!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string p0, "context is null!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "onChange occur error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onChange called: userid= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpAodCanvas"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->onChangeInner(Z)Z

    :cond_0
    return-void
.end method

.method public onChange(ZLjava/util/Collection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p4}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    return-void
.end method

.method public register()V
    .locals 5

    const-string v0, "OpAodCanvas"

    iget-boolean v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mResigerSuccess:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v2}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1200(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mUri:Landroid/net/Uri;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v1, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "register"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mResigerSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    const-string v3, "AodBgObserver: registerContentObserver failed."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mResigerSuccess:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->onChangeInner(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1500(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1300(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1400(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->loadFromCache(Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Landroid/os/Handler;)V

    :goto_1
    return-void
.end method

.method public unregister()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mResigerSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$1600(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->mResigerSuccess:Z

    :cond_0
    return-void
.end method
