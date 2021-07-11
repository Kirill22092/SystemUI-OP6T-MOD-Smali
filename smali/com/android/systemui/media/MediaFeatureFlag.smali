.class public final Lcom/android/systemui/media/MediaFeatureFlag;
.super Ljava/lang/Object;
.source "MediaFeatureFlag.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaFeatureFlag;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/media/MediaFeatureFlag;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
