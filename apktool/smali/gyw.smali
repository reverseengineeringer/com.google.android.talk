.class public final Lgyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyr;


# instance fields
.field a:Lgyf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lgyf;

    invoke-direct {v0}, Lgyf;-><init>()V

    iput-object v0, p0, Lgyw;->a:Lgyf;

    .line 25
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0}, Lgyw;-><init>()V

    .line 1023
    return-void
.end method


# virtual methods
.method public a(Lgxk;)Lgyq;
    .locals 3

    .prologue
    .line 1027
    new-instance v0, Lgyq;

    iget-object v1, p0, Lgyw;->a:Lgyf;

    .line 2015
    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lgyq;-><init>(Lgxk;Lgyf;B)V

    .line 1027
    return-object v0
.end method
