.class Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;
.super Ljava/lang/Thread;
.source "OpSketchPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpSketchPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackMaskGenerator"
.end annotation


# instance fields
.field private mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

.field private mListener:Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;

.field private mSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;Landroid/graphics/Point;Lcom/oneplus/aod/bg/OpSketchBitmapHelper;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mListener:Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;

    .line 690
    iput-object p2, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mSize:Landroid/graphics/Point;

    .line 691
    iput-object p3, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BlackMaskGenerator"

    const-string v1, "start"

    .line 696
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mSize:Landroid/graphics/Point;

    invoke-static {}, Lcom/oneplus/aod/bg/OpSketchPaint;->access$1300()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->genBurninMask(Landroid/graphics/Point;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 698
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mListener:Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 699
    invoke-interface {v2, v1}, Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;->onGenBurnInMaskDone(Landroid/graphics/Bitmap;)V

    .line 700
    iput-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mListener:Lcom/oneplus/aod/bg/OpSketchPaint$OnGenBurnInMaskDoneListener;

    .line 702
    :cond_0
    iput-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint$BlackMaskGenerator;->mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    const-string p0, "end"

    .line 703
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
