.class final Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;
.super Ljava/lang/Object;
.source "PeopleHubNotificationListener.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;->this$0:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;->this$0:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->access$setPlugin$p(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;->accept(Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;)V

    return-void
.end method
