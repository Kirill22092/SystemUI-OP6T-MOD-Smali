.class final Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;->INSTANCE:Lcom/android/systemui/media/MediaDataManager$loadBitmapFromUri$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    return-void
.end method
