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
    .line 94
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

    const v9, 0x7f080581

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    const-string v3, "sys.fingerprint_anim_type"

    invoke-static {v3, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_c3

    .line 99
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/16 v4, 0x2b

    invoke-static {v3, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)I

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fod_icon_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v6}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "sb":Ljava/lang/String;
    :goto_3f
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    invoke-static {v2, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 107
    .local v1, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    const-string v3, "sys.aod.fcolor_normal_unlock"

    invoke-static {v3, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_f3

    .line 110
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    const-string v4, "sys.aod.fcolor_normal"

    invoke-static {v4, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    const-string v4, "sys.aod.fcolor_normal"

    invoke-static {v4, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    :goto_9e
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v4

    if-ge v3, v4, :cond_106

    .line 117
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :goto_bd
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6108(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    .line 126
    return-void

    .line 102
    .end local v0    # "decodeResource":Landroid/graphics/Bitmap;
    .end local v1    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "sb":Ljava/lang/String;
    :cond_c3
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/16 v4, 0x1c

    invoke-static {v3, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)I

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fod_icon_default_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v6}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "sb":Ljava/lang/String;
    goto/16 :goto_3f

    .line 113
    .restart local v0    # "decodeResource":Landroid/graphics/Bitmap;
    .restart local v1    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    :cond_f3
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 114
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_9e

    .line 118
    :cond_106
    const-string v3, "sys.fingerprint_anim_type"

    invoke-static {v3, v7}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_13d

    .line 119
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_bd

    .line 122
    :cond_13d
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_bd
.end method
