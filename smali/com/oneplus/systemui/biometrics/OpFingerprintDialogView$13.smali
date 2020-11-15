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
    .line 106
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const v12, 0x7f0805a0

    const v11, 0x7f080581

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 110
    const-string v3, "sys.fingerprint_anim_type"

    invoke-static {v3, v8}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_bf

    .line 111
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/16 v4, 0x2a

    invoke-static {v3, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)I

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fod_icon_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v7}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "sb":Ljava/lang/String;
    :goto_43
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    invoke-static {v2, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "decodeResource":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 119
    .local v1, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    const-string v3, "sys.aod.fcolor_normal_unlock"

    invoke-static {v3, v8}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_f3

    .line 122
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    const-string v4, "sys.aod.fcolor_normal"

    invoke-static {v4, v8}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 123
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    const-string v4, "sys.aod.fcolor_normal"

    invoke-static {v4, v8}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    :goto_9a
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6000(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v4

    if-ge v3, v4, :cond_106

    .line 129
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6600(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x10

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    :goto_b9
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6108(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    .line 138
    return-void

    .line 114
    .end local v0    # "decodeResource":Landroid/graphics/Bitmap;
    .end local v1    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "sb":Ljava/lang/String;
    :cond_bf
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/16 v4, 0x1b

    invoke-static {v3, v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6002(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)I

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fod_icon_default_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v7}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6100(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "sb":Ljava/lang/String;
    goto/16 :goto_43

    .line 125
    .restart local v0    # "decodeResource":Landroid/graphics/Bitmap;
    .restart local v1    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    :cond_f3
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 126
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_9a

    .line 130
    :cond_106
    const-string v3, "sys.fingerprint_anim_type"

    invoke-static {v3, v8}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_135

    .line 131
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v11, v9}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v11, v9}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b9

    .line 134
    :cond_135
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6300(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v12, v9}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v3}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Lcom/oneplus/systemui/biometrics/OpCircleImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$13;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v4}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$6200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v12, v9}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/systemui/biometrics/OpCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b9
.end method
