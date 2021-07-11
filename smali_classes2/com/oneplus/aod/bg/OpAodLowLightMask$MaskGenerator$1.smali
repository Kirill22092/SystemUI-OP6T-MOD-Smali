.class Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;
.super Ljava/lang/Object;
.source "OpAodLowLightMask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;->this$0:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    iput-object p2, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;->this$0:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    .line 107
    invoke-static {v1}, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;->access$000(Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;)Lcom/oneplus/aod/bg/OpAodLowLightMask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 109
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 112
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator$1;->this$0:Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;

    invoke-static {p0}, Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;->access$000(Lcom/oneplus/aod/bg/OpAodLowLightMask$MaskGenerator;)Lcom/oneplus/aod/bg/OpAodLowLightMask;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
