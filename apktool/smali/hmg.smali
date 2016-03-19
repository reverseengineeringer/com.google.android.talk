.class final Lhmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhmj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhmj",
        "<TM;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhmf;


# direct methods
.method constructor <init>(Lhmf;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lhmg;->a:Lhmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 60
    check-cast p2, Llyi;

    .line 2017
    sget-object v0, Lhms;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1066
    new-instance v1, Lhmh;

    invoke-direct {v1, p0, p1, p2}, Lhmh;-><init>(Lhmg;Ljava/lang/String;Llyi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 60
    return-void
.end method
