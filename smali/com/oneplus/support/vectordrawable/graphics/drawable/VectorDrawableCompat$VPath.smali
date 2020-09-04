.class Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1510
    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V
    .locals 1

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1510
    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    .line 1541
    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    .line 1542
    iget v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    iput v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    .line 1543
    iget-object p1, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    invoke-static {p1}, Lcom/oneplus/support/core/graphics/PathParser;->deepCopyNodes([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public getPathName()Ljava/lang/String;
    .locals 0

    .line 1554
    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    return-object p0
.end method

.method public isClipPath()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 0

    .line 1547
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1548
    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    if-eqz p0, :cond_0

    .line 1549
    invoke-static {p0, p1}, Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;->nodesToPath([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
