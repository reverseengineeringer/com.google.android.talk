.class public final Ldnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ldnx;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Ldnx;->b:Ljava/lang/String;

    .line 20
    iput-wide p3, p0, Ldnx;->c:J

    .line 21
    iput-boolean p5, p0, Ldnx;->d:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ldnx;->b:Ljava/lang/String;

    return-object v0
.end method
