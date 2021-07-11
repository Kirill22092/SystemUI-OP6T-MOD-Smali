.class Lcom/oneplus/aod/bg/OpSketchPaint$4;
.super Ljava/lang/Object;
.source "OpSketchPaint.java"

# interfaces
.implements Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpSketchPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/bg/OpSketchPaint;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$4;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenBurnInMaskDone(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$4;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$1200(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$4;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$1200(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapShader;

    .line 665
    iget-object v1, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz p1, :cond_1

    .line 670
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 672
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$4;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$1200(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 674
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint$4;->this$0:Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-static {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$1200(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    return-void
.end method
