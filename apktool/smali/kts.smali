.class final Lkts;
.super Lksr;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkto;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkto",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lksr;-><init>(Lksm;)V

    .line 852
    invoke-virtual {p1}, Lkto;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lkts;->a:Ljava/util/Comparator;

    .line 853
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 857
    new-instance v0, Lktr;

    iget-object v1, p0, Lkts;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lktr;-><init>(Ljava/util/Comparator;)V

    .line 858
    invoke-virtual {p0, v0}, Lkts;->a(Lkso;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
