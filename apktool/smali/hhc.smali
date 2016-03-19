.class final Lhhc;
.super Lhbw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhbw",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhgv;

.field private final b:Lhgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhgz",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lhgv;Lhgz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhgz",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lhhc;->a:Lhgv;

    .line 132
    sget-wide v0, Lhbw;->d:J

    invoke-direct {p0, v0, v1}, Lhbw;-><init>(J)V

    .line 133
    iput-object p2, p0, Lhhc;->b:Lhgz;

    .line 134
    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lhhc;->b:Lhgz;

    invoke-virtual {v0}, Lhgz;->b()Ljava/lang/Object;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lhhc;->b:Lhgz;

    invoke-virtual {v0, p1}, Lhgz;->a(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lhhc;->b:Lhgz;

    invoke-virtual {v0}, Lhgz;->a()V

    .line 139
    return-void
.end method
