.class Lcom/android/systemui/pip/phone/PipMotionHelper$1;
.super Ljava/lang/Object;
.source "PipMotionHelper.java"

# interfaces
.implements Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMotionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPipTransitionCanceled(Landroid/content/ComponentName;I)V
    .locals 0

    return-void
.end method

.method public onPipTransitionFinished(Landroid/content/ComponentName;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->access$000(Lcom/android/systemui/pip/phone/PipMotionHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->access$000(Lcom/android/systemui/pip/phone/PipMotionHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->access$002(Lcom/android/systemui/pip/phone/PipMotionHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onPipTransitionStarted(Landroid/content/ComponentName;I)V
    .locals 0

    return-void
.end method
