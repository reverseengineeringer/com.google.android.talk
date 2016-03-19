.class final Lkst;
.super Lksu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lksu",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient c:Lkss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkss",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkss;Lkss;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lkss",
            "<TK;TV;>;",
            "Lkss",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lksu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkss;)V

    .line 106
    iput-object p4, p0, Lkst;->c:Lkss;

    .line 107
    return-void
.end method


# virtual methods
.method b()Lkss;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkss",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lkst;->c:Lkss;

    return-object v0
.end method
