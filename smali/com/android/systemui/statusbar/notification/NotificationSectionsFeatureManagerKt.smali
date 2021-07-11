.class public final Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;
.super Ljava/lang/Object;
.source "NotificationSectionsFeatureManager.kt"


# static fields
.field private static sUsePeopleFiltering:Ljava/lang/Boolean;


# direct methods
.method public static final synthetic access$setSUsePeopleFiltering$p(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$usePeopleFiltering(Lcom/android/systemui/util/DeviceConfigProxy;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->usePeopleFiltering(Lcom/android/systemui/util/DeviceConfigProxy;)Z

    move-result p0

    return p0
.end method

.method private static final usePeopleFiltering(Lcom/android/systemui/util/DeviceConfigProxy;)Z
    .locals 3

    .line 82
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "systemui"

    const-string v2, "notifications_use_people_filtering"

    .line 83
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    .line 87
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method
