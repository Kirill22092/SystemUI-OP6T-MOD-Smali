.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$0ZxUFLvlsGlm9ET2o7nSDW8wc5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/AlarmTimeout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/AlarmTimeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$0ZxUFLvlsGlm9ET2o7nSDW8wc5w;->f$0:Lcom/android/systemui/util/AlarmTimeout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$0ZxUFLvlsGlm9ET2o7nSDW8wc5w;->f$0:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    return-void
.end method
