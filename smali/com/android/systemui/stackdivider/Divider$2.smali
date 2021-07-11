.class Lcom/android/systemui/stackdivider/Divider$2;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .locals 0

    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 2

    .line 215
    sget-boolean v0, Lcom/android/systemui/stackdivider/Divider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardShowingChanged, isDividerVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyguardStateController.isShowing():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->access$200(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Divider"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$300(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$100(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->access$200(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setHidden(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->access$200(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object p0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/Divider;->access$400(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerImeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerImeController;->updateAdjustForIme()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    return-void
.end method
