.class Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;
.super Ljava/lang/Object;
.source "OpFrameAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget v2, v1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameAnimationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 224
    invoke-static {v0, v3}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$002(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)I

    return-void

    .line 228
    :cond_0
    iget-object v1, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 229
    invoke-static {v0, v3}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$002(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)I

    return-void

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationView.mBitmap#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v3, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$100(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$200(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$008(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$300(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$000(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget v2, v1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    if-ne v0, v2, :cond_3

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$400(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;->animationFinished()V

    .line 243
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$402(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;)Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$Callbacks;

    .line 244
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {p0, v3}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$302(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;Z)Z

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->access$300(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->start(Z)V

    goto :goto_0

    .line 250
    :cond_4
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    const/4 v0, 0x4

    .line 252
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method
