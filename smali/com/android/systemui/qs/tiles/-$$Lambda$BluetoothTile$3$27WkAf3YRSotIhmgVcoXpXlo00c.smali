.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$3$27WkAf3YRSotIhmgVcoXpXlo00c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/BluetoothTile$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$3$27WkAf3YRSotIhmgVcoXpXlo00c;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$3$27WkAf3YRSotIhmgVcoXpXlo00c;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile$3;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->lambda$onServiceDisconnected$0$BluetoothTile$3()V

    return-void
.end method
