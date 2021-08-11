.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$k1PbTpG_zEeb84NzDtu0B5A435o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$k1PbTpG_zEeb84NzDtu0B5A435o;->f$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$k1PbTpG_zEeb84NzDtu0B5A435o;->f$0:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->fetchInitialState()V

    return-void
.end method
