.class final Lisp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liso;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 44
    return-void
.end method
