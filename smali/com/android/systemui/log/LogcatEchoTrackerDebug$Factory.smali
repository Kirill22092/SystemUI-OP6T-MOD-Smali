.class public final Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;
.super Ljava/lang/Object;
.source "LogcatEchoTrackerDebug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/log/LogcatEchoTrackerDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTrackerDebug;
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mainLooper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;-><init>(Landroid/content/ContentResolver;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    invoke-static {p0, p2}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->access$attach(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Looper;)V

    return-object p0
.end method
