.class public final Lcom/android/systemui/controls/ui/RenderInfo;
.super Ljava/lang/Object;
.source "RenderInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/RenderInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

.field private static final appIconMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final iconMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enabledBackground:I

.field private final foreground:I

.field private final icon:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    iput p3, p0, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    return-void
.end method

.method public static final synthetic access$getAppIconMap$cp()Landroid/util/ArrayMap;
    .locals 1

    .line 31
    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static final synthetic access$getIconMap$cp()Landroid/util/SparseArray;
    .locals 1

    .line 31
    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/controls/ui/RenderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/controls/ui/RenderInfo;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    iget v1, p1, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    iget p1, p1, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getEnabledBackground()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    return p0
.end method

.method public final getForeground()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderInfo(icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foreground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabledBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/controls/ui/RenderInfo;->enabledBackground:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
