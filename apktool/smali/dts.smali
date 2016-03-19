.class public final Ldts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ldts;->a:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Ldts;->b:Z

    .line 19
    iput-boolean p3, p0, Ldts;->c:Z

    .line 20
    iput-boolean p4, p0, Ldts;->d:Z

    .line 21
    iput p5, p0, Ldts;->e:I

    .line 22
    iput-object p6, p0, Ldts;->f:Ljava/lang/String;

    .line 23
    return-void
.end method
