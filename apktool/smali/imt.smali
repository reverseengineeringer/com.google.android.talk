.class public Limt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field public final synthetic b:Lhqp;


# direct methods
.method public constructor <init>(Lhqp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Limt;->b:Lhqp;

    invoke-direct {p0, p2}, Limt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p1, p0, Limt;->a:Ljava/lang/String;

    .line 1017
    return-void
.end method
