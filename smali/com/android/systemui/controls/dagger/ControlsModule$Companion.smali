.class public final Lcom/android/systemui/controls/dagger/ControlsModule$Companion;
.super Ljava/lang/Object;
.source "ControlsModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/dagger/ControlsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/controls/dagger/ControlsModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesControlsFeatureEnabled(Landroid/content/pm/PackageManager;)Z
    .locals 0
    .param p1    # Landroid/content/pm/PackageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pm"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "android.software.controls"

    .line 61
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
