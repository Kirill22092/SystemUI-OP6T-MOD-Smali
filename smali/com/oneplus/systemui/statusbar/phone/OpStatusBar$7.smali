.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->startWakingUpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 901
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 906
    sget-boolean p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 907
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWakingUpAnimation onAnimationEnd mCancelled:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->mCancelled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mPreHideAod:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    .line 908
    invoke-static {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$900(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpStatusBar"

    .line 907
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$900(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 912
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodWindowManager;->stopDozing()V

    .line 913
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->stopDozing()V

    .line 914
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->resetStatus()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 893
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->mCancelled:Z

    .line 894
    sget-boolean p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpStatusBar"

    const-string p1, "mWakingUpAnimation onAnimationStart"

    .line 895
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
