.class public Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;
.super Ljava/lang/Object;
.source "GarbageMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessMemInfo"
.end annotation


# instance fields
.field public currentRss:J

.field public head:I

.field public max:J

.field public name:Ljava/lang/String;

.field public pid:J

.field public rss:[J

.field public startTime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d0

    new-array v0, v0, [J

    .line 514
    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->rss:[J

    const-wide/16 v0, 0x1

    .line 515
    iput-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 519
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pid:J

    .line 520
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->name:Ljava/lang/String;

    .line 521
    iput-wide p4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo p1, "{ \"pid\": "

    .line 530
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pid:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, ", \"name\": \""

    .line 532
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->name:Ljava/lang/String;

    const/16 p3, 0x22

    const/16 v0, 0x2d

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "\", \"start\": "

    .line 534
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 535
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, ", \"rss\": ["

    .line 536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 539
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->rss:[J

    array-length p3, p3

    if-ge p1, p3, :cond_1

    if-lez p1, :cond_0

    const-string p3, ","

    .line 540
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->rss:[J

    iget v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    add-int/2addr v0, p1

    array-length v1, p3

    rem-int/2addr v0, v1

    aget-wide v0, p3, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "] }"

    .line 543
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getUptime()J
    .locals 4

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
