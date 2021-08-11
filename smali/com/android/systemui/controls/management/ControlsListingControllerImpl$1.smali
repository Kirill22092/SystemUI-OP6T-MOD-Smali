.class final synthetic Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "ControlsListingControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsListingControllerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lcom/android/settingslib/applications/ServiceListing;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;

    invoke-direct {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "createServiceListing"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class p0, Lcom/android/systemui/controls/management/ControlsListingControllerImplKt;

    const-string v0, "packages__apps__OPSystemUI__android_common__OPSystemUI-core"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "createServiceListing(Landroid/content/Context;)Lcom/android/settingslib/applications/ServiceListing;"

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)Lcom/android/settingslib/applications/ServiceListing;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImplKt;->access$createServiceListing(Landroid/content/Context;)Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;->invoke(Landroid/content/Context;)Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p0

    return-object p0
.end method
