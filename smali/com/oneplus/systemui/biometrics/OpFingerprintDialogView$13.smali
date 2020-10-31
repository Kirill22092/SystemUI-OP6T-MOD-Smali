.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;
.super Ljava/lang/Object;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->animIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0805a0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "fod_icon_default_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v5}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v2

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_88

    .line 98
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v2, v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6402(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 99
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :goto_82
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6008(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    .line 107
    return-void

    .line 101
    :cond_88
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_82
.end method
