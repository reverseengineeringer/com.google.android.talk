.class final Leqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldli;


# instance fields
.field final synthetic a:Leqd;


# direct methods
.method constructor <init>(Leqd;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Leqe;->a:Leqd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldns;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Leqe;->a:Leqd;

    invoke-virtual {p1}, Ldns;->a()Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-virtual {v0, v1}, Leqd;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method
