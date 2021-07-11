.class Lcom/android/systemui/ScreenDecorations$8;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 866
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 867
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)I

    move-result v1

    const-string v2, "ScreenDecorations"

    if-eq v0, v1, :cond_0

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attention, rotation changed at postDelay interval, mRotation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 869
    invoke-static {v3}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newRotation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1, v0}, Lcom/android/systemui/ScreenDecorations;->access$202(Lcom/android/systemui/ScreenDecorations;I)I

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$1100(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$1200(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateDecorSize()V

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$1300(Lcom/android/systemui/ScreenDecorations;)V

    .line 883
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowRunnable, mOpPendingRotationChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$300(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOpPendingRotationChangeBottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 885
    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$400(Lcom/android/systemui/ScreenDecorations;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 886
    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$302(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 890
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$402(Lcom/android/systemui/ScreenDecorations;Z)Z

    .line 892
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_5

    .line 894
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v3, v2, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    goto :goto_1

    .line 897
    :cond_4
    invoke-static {v2, v0}, Lcom/android/systemui/ScreenDecorations;->access$1400(Lcom/android/systemui/ScreenDecorations;I)V

    .line 898
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$8;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v2, v2, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
