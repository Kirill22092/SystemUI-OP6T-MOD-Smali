.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$1D7d4MB3IfMdSh7fQ1kWsUzvPD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/ShadeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$1D7d4MB3IfMdSh7fQ1kWsUzvPD8;->f$0:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$1D7d4MB3IfMdSh7fQ1kWsUzvPD8;->f$0:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->runPostCollapseRunnables()V

    return-void
.end method
