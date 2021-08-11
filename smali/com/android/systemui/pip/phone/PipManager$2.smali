.class Lcom/android/systemui/pip/phone/PipManager$2;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onActivityPinned$0()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setPipVisibility(Z)V

    return-void
.end method

.method static synthetic lambda$onActivityUnpinned$1(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setPipVisibility(Z)V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onActivityPinned()V

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/phone/PipManager;->access$200(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/pip/phone/PipMediaController;->onActivityPinned()V

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    iget-object p2, p2, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onActivityPinned()V

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipAppOpsListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->onActivityPinned(Ljava/lang/String;)V

    const-class p0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/UiOffloadThread;

    sget-object p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$kFSpUf2kEc9cokMmjrww09bE40o;

    invoke-virtual {p0, p1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPipToFullscreen(Z)V

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$400(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipManager;->access$500(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPipActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    iget-object v1, v1, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onActivityUnpinned()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onActivityUnpinned(Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$2;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipAppOpsListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->onActivityUnpinned()V

    const-class p0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$7wUFTc4hTjTQbo3BPlrl8V6q3tU;

    invoke-direct {v1, v0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$7wUFTc4hTjTQbo3BPlrl8V6q3tU;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
