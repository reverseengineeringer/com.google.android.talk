.class final Llab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-boolean p1, p0, Llab;->a:Z

    .line 266
    iput-object p2, p0, Llab;->b:Ljava/lang/Throwable;

    .line 267
    return-void
.end method
