.class public final Lcom/android/systemui/controls/management/ControlsListingControllerImplKt;
.super Ljava/lang/Object;
.source "ControlsListingControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsListingControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsListingControllerImpl.kt\ncom/android/systemui/controls/management/ControlsListingControllerImplKt\n*L\n1#1,179:1\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$createServiceListing(Landroid/content/Context;)Lcom/android/settingslib/applications/ServiceListing;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImplKt;->createServiceListing(Landroid/content/Context;)Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p0

    return-object p0
.end method

.method private static final createServiceListing(Landroid/content/Context;)Lcom/android/settingslib/applications/ServiceListing;
    .locals 1

    .line 37
    new-instance v0, Lcom/android/settingslib/applications/ServiceListing$Builder;

    invoke-direct {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "android.service.controls.ControlsProviderService"

    .line 38
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const-string p0, "android.permission.BIND_CONTROLS"

    .line 39
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const-string p0, "Controls Provider"

    .line 40
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const-string p0, "controls_providers"

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setTag(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    const/4 p0, 0x1

    .line 43
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setAddDeviceLockedFlags(Z)Lcom/android/settingslib/applications/ServiceListing$Builder;

    .line 44
    invoke-virtual {v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->build()Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p0

    const-string v0, "ServiceListing.Builder(c\u2026Flags(true)\n    }.build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
