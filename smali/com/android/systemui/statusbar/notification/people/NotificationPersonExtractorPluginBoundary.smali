.class public final Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;
.super Ljava/lang/Object;
.source "PeopleHubNotificationListener.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeopleHubNotificationListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeopleHubNotificationListener.kt\ncom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary\n*L\n1#1,326:1\n*E\n"
.end annotation


# instance fields
.field private plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionController;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/policy/ExtensionController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    const-string v1, "extensionController"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;-><init>(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    return-void
.end method

.method public static final synthetic access$setPlugin$p(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    return-void
.end method


# virtual methods
.method public isPersonNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sbn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;->isPersonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
