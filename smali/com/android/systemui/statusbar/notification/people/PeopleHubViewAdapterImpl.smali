.class public final Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapterImpl;
.super Ljava/lang/Object;
.source "PeopleHubViewController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/DataSource;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/people/DataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/people/DataSource<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
