.class final Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$$inlined$use$lambda$1;
.super Ljava/lang/Object;
.source "LogBufferEulogizer.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dump/LogBufferEulogizer;->readEulogyIfPresent(Ljava/io/PrintWriter;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pw$inlined:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$$inlined$use$lambda$1;->$pw$inlined:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$$inlined$use$lambda$1;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$$inlined$use$lambda$1;->$pw$inlined:Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
