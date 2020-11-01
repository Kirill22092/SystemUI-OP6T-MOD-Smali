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
    .line 90
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0805a0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, -0x712901

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "fod_icon_default_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "%02d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
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

    .line 97
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    const-string v2, "sys.aod.fcolor_normal_unlock"

    invoke-static {v2, v8}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_ab

    .line 100
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    const-string v3, "sys.aod.fcolor_normal"

    invoke-static {v3, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 101
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    const-string v3, "sys.aod.fcolor_normal"

    invoke-static {v3, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 106
    :goto_8a
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v2

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_be

    .line 107
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :goto_a5
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6008(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    .line 113
    return-void

    .line 103
    :cond_ab
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 104
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8a

    .line 109
    :cond_be
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a5
.end method
