.class final Lbnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpf;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lbng;


# direct methods
.method constructor <init>(Lbng;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2649
    iput-object p1, p0, Lbnn;->c:Lbng;

    iput-object p2, p0, Lbnn;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lbnn;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 2657
    return-void
.end method

.method public a(Ljava/lang/String;Lbpa;)V
    .locals 4

    .prologue
    .line 2652
    iget-object v0, p0, Lbnn;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    iget-object v0, p0, Lbnn;->b:Ljava/util/ArrayList;

    iget-wide v2, p2, Lbpa;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2654
    return-void
.end method
