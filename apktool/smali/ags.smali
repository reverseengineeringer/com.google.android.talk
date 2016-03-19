.class final Lags;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lagr;


# direct methods
.method constructor <init>(Lagr;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 232
    iput-object p1, p0, Lags;->c:Lagr;

    iput-object p2, p0, Lags;->a:Ljava/lang/String;

    iput-wide p3, p0, Lags;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lags;->c:Lagr;

    .line 1038
    iget-object v0, v0, Lagr;->a:Lahc;

    .line 235
    iget-object v1, p0, Lags;->a:Ljava/lang/String;

    iget-wide v2, p0, Lags;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lahc;->a(Ljava/lang/String;J)V

    .line 236
    iget-object v0, p0, Lags;->c:Lagr;

    .line 2038
    iget-object v0, v0, Lagr;->a:Lahc;

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahc;->a(Ljava/lang/String;)V

    .line 237
    return-void
.end method
