.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
        ">;"
    }
.end annotation


# instance fields
.field private final cProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dialogBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final noManProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->cProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->noManProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->dialogBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 39
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/INotificationManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;-><init>(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->cProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->noManProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->dialogBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->get()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-result-object p0

    return-object p0
.end method
