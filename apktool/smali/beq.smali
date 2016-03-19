.class public final Lbeq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbeq;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lbeq;->c:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lbeq;->d:Ljava/lang/String;

    .line 18
    return-void
.end method
