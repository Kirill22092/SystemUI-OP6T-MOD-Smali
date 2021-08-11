.class public final Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;
.super Ljava/lang/Object;
.source "PeopleHubViewAdapterImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/DataSource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/DataSource<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;->dataSourceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/DataSource<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/DataSource<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/people/DataSource;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;-><init>(Lcom/android/systemui/statusbar/notification/people/DataSource;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;->dataSourceProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl_Factory;->get()Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;

    move-result-object p0

    return-object p0
.end method
