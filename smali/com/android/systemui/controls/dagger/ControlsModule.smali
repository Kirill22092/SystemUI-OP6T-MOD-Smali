.class public abstract Lcom/android/systemui/controls/dagger/ControlsModule;
.super Ljava/lang/Object;
.source "ControlsModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/dagger/ControlsModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/dagger/ControlsModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/dagger/ControlsModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/dagger/ControlsModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/dagger/ControlsModule;->Companion:Lcom/android/systemui/controls/dagger/ControlsModule$Companion;

    return-void
.end method

.method public static final providesControlsFeatureEnabled(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0    # Landroid/content/pm/PackageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/systemui/controls/dagger/ControlsModule;->Companion:Lcom/android/systemui/controls/dagger/ControlsModule$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/dagger/ControlsModule$Companion;->providesControlsFeatureEnabled(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method
