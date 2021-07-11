.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$SmgcCxPvK9MpCttxm75WvXCaB3s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSContainerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$SmgcCxPvK9MpCttxm75WvXCaB3s;->f$0:Lcom/android/systemui/qs/QSContainerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$QSContainerImpl$SmgcCxPvK9MpCttxm75WvXCaB3s;->f$0:Lcom/android/systemui/qs/QSContainerImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->lambda$onFinishInflate$0$QSContainerImpl(Ljava/lang/Boolean;)V

    return-void
.end method
